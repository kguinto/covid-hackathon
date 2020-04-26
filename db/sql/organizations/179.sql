
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
      'Sharp Coronado Hospital',
      '250 Prospect Pl
Coronado, CA 92118',
      'Coronado',
      'CA',
      '',
      'No',
      '32.694447',
      '-117.1686765'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Coronado Hospital'
        AND o.latitude = '32.694447'
        AND o.longitude = '-117.1686765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Coronado Hospital'
        AND o.latitude = '32.694447'
        AND o.longitude = '-117.1686765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Coronado Hospital'
        AND o.latitude = '32.694447'
        AND o.longitude = '-117.1686765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Coronado Hospital'
        AND o.latitude = '32.694447'
        AND o.longitude = '-117.1686765'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sharp Coronado Hospital'
        AND o.latitude = '32.694447'
        AND o.longitude = '-117.1686765'));

COMMIT;
