
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
      'Greater El Monte Community Hospital',
      '1701 Santa Anita Ave
South El Monte, CA 91733',
      'South El Monte',
      'CA',
      '',
      'No',
      '34.0480516',
      '-118.0434003'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Greater El Monte Community Hospital'
        AND o.latitude = '34.0480516'
        AND o.longitude = '-118.0434003'));

COMMIT;
