
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
      'Clinton County Nursing Home',
      '16 Flynn Ave
Plattsburgh, NY 12901',
      'Plattsburgh',
      'NY',
      'Back loading dock',
      'No',
      '44.6812061',
      '-73.4571043'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Nursing Home'
        AND o.latitude = '44.6812061'
        AND o.longitude = '-73.4571043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Nursing Home'
        AND o.latitude = '44.6812061'
        AND o.longitude = '-73.4571043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Nursing Home'
        AND o.latitude = '44.6812061'
        AND o.longitude = '-73.4571043'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clinton County Nursing Home'
        AND o.latitude = '44.6812061'
        AND o.longitude = '-73.4571043'));

COMMIT;
