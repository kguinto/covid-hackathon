
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
      'Dignity Health California Hospital',
      '1401 S Grand Ave
Los Angeles, CA 90015',
      'Los Angeles',
      'CA',
      '',
      'Yes',
      '34.0374888',
      '-118.2661449'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dignity Health California Hospital'
        AND o.latitude = '34.0374888'
        AND o.longitude = '-118.2661449'));

COMMIT;
