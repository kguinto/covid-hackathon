
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'University of Chicago Medicine Comer Children''s Hospital',
      '5721 S Maryland Ave
Chicago, IL 60637',
      'Chicago',
      'IL',
      'ATTN: 
University of Chicago Medicine Comer Children''s Hospital

Pediatric Intensive Care Unit

Bring to unit or call 773-702-1000

Explain that you have masks and other PPE to donate to the unit',
      'Yes',
      '41.7902993',
      '-87.6055693'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine Comer Children''s Hospital'
        AND o.latitude = '41.7902993'
        AND o.longitude = '-87.6055693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine Comer Children''s Hospital'
        AND o.latitude = '41.7902993'
        AND o.longitude = '-87.6055693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine Comer Children''s Hospital'
        AND o.latitude = '41.7902993'
        AND o.longitude = '-87.6055693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('NEED N95''s Yesterday!!!! Please get them here ASAP',
    (SELECT id FROM organizations o
      WHERE o.name = 'University of Chicago Medicine Comer Children''s Hospital'
        AND o.latitude = '41.7902993'
        AND o.longitude = '-87.6055693'));

COMMIT;
