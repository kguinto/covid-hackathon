
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
      'Hospital ',
      '27300 Iris Ave
Moreno Valley, CA 92555',
      'Moreno Valley',
      'CA',
      'Curbside, Loading dock, or mail. ',
      'Yes',
      '33.897404',
      '-117.186026'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital '
        AND o.latitude = '33.897404'
        AND o.longitude = '-117.186026'));

COMMIT;
