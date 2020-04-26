
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
      'Righttime Medical Care',
      '12220 Rockville Pike
Rockville, MD 20852',
      'Rockville',
      'MD',
      'Any',
      '',
      '39.0556639',
      '-77.119402'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Righttime Medical Care'
        AND o.latitude = '39.0556639'
        AND o.longitude = '-77.119402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Righttime Medical Care'
        AND o.latitude = '39.0556639'
        AND o.longitude = '-77.119402'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Righttime Medical Care'
        AND o.latitude = '39.0556639'
        AND o.longitude = '-77.119402'));

COMMIT;
