
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
      'Knox Community Hospital',
      '1330 Coshocton Ave
Mt Vernon, OH 43050',
      'Mt Vernon',
      'OH',
      '',
      'Unsure',
      '40.3983272',
      '-82.4477769'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Knox Community Hospital'
        AND o.latitude = '40.3983272'
        AND o.longitude = '-82.4477769'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Knox Community Hospital'
        AND o.latitude = '40.3983272'
        AND o.longitude = '-82.4477769'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Knox Community Hospital'
        AND o.latitude = '40.3983272'
        AND o.longitude = '-82.4477769'));

COMMIT;
