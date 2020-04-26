
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
      'Palo Alto Medical Foundation ',
      '301 Old San Francisco Road
Sunnyvale, CA 94086',
      'Sunnyvale ',
      'CA',
      'Leave at front door with doorperson attention Geriatrics Department . ',
      'Yes',
      '37.3683444',
      '-122.0297223'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation '
        AND o.latitude = '37.3683444'
        AND o.longitude = '-122.0297223'));

COMMIT;
