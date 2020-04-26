
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
      'Cascade Behavioral Hospital',
      '12844 Military Rd S
Tukwila, WA 98168',
      'Tukwila',
      'WA',
      '12844 Military Road South, Attn:  Don Stenzel, Central Supply',
      'Yes',
      '47.4871907',
      '-122.2962775'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cascade Behavioral Hospital'
        AND o.latitude = '47.4871907'
        AND o.longitude = '-122.2962775'));

COMMIT;
