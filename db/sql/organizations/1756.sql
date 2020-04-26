
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
      'Rome Memorial Hospital',
      '1500 N James St
Rome, NY 13440',
      'Rome',
      'NY',
      'Call and ask for Julie Chrysler, she is in charge of donations. RMH # 315-338-7000',
      'Yes',
      '43.2291604',
      '-75.4423021'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rome Memorial Hospital'
        AND o.latitude = '43.2291604'
        AND o.longitude = '-75.4423021'));

COMMIT;
