
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
      'I & O Medical Center',
      '593 Aberdeen Rd
Hampton, VA 23661',
      'Hampton',
      'VA',
      'Drop off or pick up',
      'Unsure',
      '37.0109075',
      '-76.4034331'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'I & O Medical Center'
        AND o.latitude = '37.0109075'
        AND o.longitude = '-76.4034331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'I & O Medical Center'
        AND o.latitude = '37.0109075'
        AND o.longitude = '-76.4034331'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('medical long sleeve gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'I & O Medical Center'
        AND o.latitude = '37.0109075'
        AND o.longitude = '-76.4034331'));

COMMIT;
