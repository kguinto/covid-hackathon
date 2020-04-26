
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
      'Satellite Healthcare',
      '1450 Kooser Rd
San Jose, CA 95118',
      'San Jose',
      'CA',
      'Front Lobby',
      'No',
      '37.2454173',
      '-121.8921395'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Satellite Healthcare'
        AND o.latitude = '37.2454173'
        AND o.longitude = '-121.8921395'));

COMMIT;
