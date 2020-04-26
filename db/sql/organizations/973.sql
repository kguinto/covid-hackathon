
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
      'Palo Alto Medical Foundation',
      '301 Industrial Rd
San Carlos, CA 94070',
      'San Carlos',
      'CA',
      'First Floor Parking Garage, Respiratory Clinic',
      'Yes',
      '37.5155162',
      '-122.2606032'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.5155162'
        AND o.longitude = '-122.2606032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.5155162'
        AND o.longitude = '-122.2606032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.5155162'
        AND o.longitude = '-122.2606032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.5155162'
        AND o.longitude = '-122.2606032'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.5155162'
        AND o.longitude = '-122.2606032'));

COMMIT;
