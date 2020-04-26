
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
      'Swedish Medical Center',
      '501 E Hampden Ave 
Englewood, CO 80113',
      'Englewood',
      'CO',
      '',
      'No',
      '39.6543242',
      '-104.9811769'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Medical Center'
        AND o.latitude = '39.6543242'
        AND o.longitude = '-104.9811769'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Medical Center'
        AND o.latitude = '39.6543242'
        AND o.longitude = '-104.9811769'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Medical Center'
        AND o.latitude = '39.6543242'
        AND o.longitude = '-104.9811769'));

COMMIT;
