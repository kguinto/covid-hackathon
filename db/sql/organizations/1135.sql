
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
      'React Physical Therapy',
      '225 S Sangamon St
Chicago, IL 60607',
      'Chicago',
      'IL',
      'Please email (eolson@bereact.com) with drop off timing; can leave with front desk through the revolving door; mailing ATTN is React Physical Therapy',
      'Yes',
      '41.8782525',
      '-87.6504831'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'React Physical Therapy'
        AND o.latitude = '41.8782525'
        AND o.longitude = '-87.6504831'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'React Physical Therapy'
        AND o.latitude = '41.8782525'
        AND o.longitude = '-87.6504831'));

COMMIT;
