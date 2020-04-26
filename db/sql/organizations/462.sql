
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
      'Urgent Care 3D',
      '6010 Hidden Valley Rd #150
Carlsbad, CA 92011',
      'Carlsbad',
      'CA',
      'Will collect',
      '',
      '33.1229358',
      '-117.3049454'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Urgent Care 3D'
        AND o.latitude = '33.1229358'
        AND o.longitude = '-117.3049454'));

COMMIT;
