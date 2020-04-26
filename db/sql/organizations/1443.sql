
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
      'Allegheny general hospital ',
      '320 E North Ave
Pittsburgh, PA 15212',
      'Pittsburgh ',
      'PA',
      'Cancer center, 2nd floor fellows room. Please call 4124172324, in case of difficulty to figure out address ',
      'Yes',
      '40.4574469',
      '-80.0032706'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegheny general hospital '
        AND o.latitude = '40.4574469'
        AND o.longitude = '-80.0032706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegheny general hospital '
        AND o.latitude = '40.4574469'
        AND o.longitude = '-80.0032706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegheny general hospital '
        AND o.latitude = '40.4574469'
        AND o.longitude = '-80.0032706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegheny general hospital '
        AND o.latitude = '40.4574469'
        AND o.longitude = '-80.0032706'));

COMMIT;
