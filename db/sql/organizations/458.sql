
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
      'Starlight Behavioral Health',
      '5317 Cherry Lawn Rd
Huntington, WV 25705',
      'Huntington',
      'WV',
      'Dropoff or mail',
      '',
      '38.4159922',
      '-82.3408464'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Starlight Behavioral Health'
        AND o.latitude = '38.4159922'
        AND o.longitude = '-82.3408464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Starlight Behavioral Health'
        AND o.latitude = '38.4159922'
        AND o.longitude = '-82.3408464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Starlight Behavioral Health'
        AND o.latitude = '38.4159922'
        AND o.longitude = '-82.3408464'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Starlight Behavioral Health'
        AND o.latitude = '38.4159922'
        AND o.longitude = '-82.3408464'));

COMMIT;
