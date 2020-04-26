
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
      'Arizona Asthma and Allergy Institute',
      '3200 E Camelback Road, Suite 125
Phoenix, AZ 85018',
      'Phoenix',
      'AZ',
      'Mail, contact number 312 404-4150',
      '',
      '33.5108005',
      '-112.0120532'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Asthma and Allergy Institute'
        AND o.latitude = '33.5108005'
        AND o.longitude = '-112.0120532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Asthma and Allergy Institute'
        AND o.latitude = '33.5108005'
        AND o.longitude = '-112.0120532'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Asthma and Allergy Institute'
        AND o.latitude = '33.5108005'
        AND o.longitude = '-112.0120532'));

COMMIT;
