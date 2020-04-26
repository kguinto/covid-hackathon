
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
      'NYS Veterans Home at Montrose ',
      '9 Hilltop Dr
Putnam Valley, NY 10579',
      'Putnam Valley ',
      'NY',
      'Residence. Mailing address ATTN: Gina Esterly ',
      'Yes',
      '41.379253',
      '-73.857161'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYS Veterans Home at Montrose '
        AND o.latitude = '41.379253'
        AND o.longitude = '-73.857161'));

COMMIT;
