
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
      'San Ramon Regional Medical ',
      '6001 Norris Canyon Rd
San Ramon, CA 94583',
      'San Ramon',
      'CA',
      'Please call 925-275-8312 before dropping off',
      'No',
      '37.7759705',
      '-121.9582426'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Ramon Regional Medical '
        AND o.latitude = '37.7759705'
        AND o.longitude = '-121.9582426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Ramon Regional Medical '
        AND o.latitude = '37.7759705'
        AND o.longitude = '-121.9582426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Ramon Regional Medical '
        AND o.latitude = '37.7759705'
        AND o.longitude = '-121.9582426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Ramon Regional Medical '
        AND o.latitude = '37.7759705'
        AND o.longitude = '-121.9582426'));

COMMIT;
