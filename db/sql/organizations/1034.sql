
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
      'Alpha Home Health and Hospice',
      '10530 19th Ave SE #201
Everett, WA 98208',
      'Everett',
      'WA',
      'Curbside or mail. Mailing address, Attn: Chris Boettcher',
      'Yes',
      '47.9017239',
      '-122.2080404'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Home Health and Hospice'
        AND o.latitude = '47.9017239'
        AND o.longitude = '-122.2080404'));

COMMIT;
