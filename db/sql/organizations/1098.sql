
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
      'Brandywine Counseling and Community Services',
      '2713 Lancaster Ave
Wilmington, DE 19805',
      'Wilmington ',
      'DE',
      'Mail them here attn: Nicole Manelski and David Loose',
      'Yes',
      '39.7504955',
      '-75.5827508'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brandywine Counseling and Community Services'
        AND o.latitude = '39.7504955'
        AND o.longitude = '-75.5827508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brandywine Counseling and Community Services'
        AND o.latitude = '39.7504955'
        AND o.longitude = '-75.5827508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brandywine Counseling and Community Services'
        AND o.latitude = '39.7504955'
        AND o.longitude = '-75.5827508'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brandywine Counseling and Community Services'
        AND o.latitude = '39.7504955'
        AND o.longitude = '-75.5827508'));

COMMIT;
