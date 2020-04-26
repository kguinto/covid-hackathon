
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
      'One Medical',
      '1299 Oakmead Pkwy
Sunnyvale, CA 94085',
      'Sunnyvale',
      'CA',
      'ATTN: Alainna Mapanao ',
      'Yes',
      '37.386812',
      '-121.9889431'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.386812'
        AND o.longitude = '-121.9889431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.386812'
        AND o.longitude = '-121.9889431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.386812'
        AND o.longitude = '-121.9889431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.386812'
        AND o.longitude = '-121.9889431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical'
        AND o.latitude = '37.386812'
        AND o.longitude = '-121.9889431'));

COMMIT;
