
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
      'Jefferson Torresdale Hospital',
      'Jefferson Health Northeast ICU
10800 Knights Road
Philadelphia, PA 19114 (shipping)',
      'Turnersville',
      'NJ',
      'They can be shipped to the hospital at 10800 Knights Road Philadelphia, PA 19114 https://www.jeffersonhealth.org/coronavirus-covid-19/medical-supply-donation.html',
      'Unsure',
      '40.0717195',
      '-74.9831245'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0717195'
        AND o.longitude = '-74.9831245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0717195'
        AND o.longitude = '-74.9831245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Jefferson Torresdale Hospital'
        AND o.latitude = '40.0717195'
        AND o.longitude = '-74.9831245'));

COMMIT;
