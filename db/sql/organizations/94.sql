
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
      'Harbor-UCLA Medical Center',
      '1000 W Carson St.
Torrance, CA 90502',
      'Torrance',
      'CA',
      'Contact Volunteer Department',
      'Unsure',
      '33.8308433',
      '-118.2924099'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Harbor-UCLA Medical Center'
        AND o.latitude = '33.8308433'
        AND o.longitude = '-118.2924099'));

COMMIT;
