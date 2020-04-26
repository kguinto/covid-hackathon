
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
      'Unity Hospital ',
      '1555 Long Pond Rd
Rochester, NY 14626',
      'Rochester ',
      'NY',
      'All the above ',
      'Yes',
      '43.1924954',
      '-77.7052439'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Unity Hospital '
        AND o.latitude = '43.1924954'
        AND o.longitude = '-77.7052439'));

COMMIT;
