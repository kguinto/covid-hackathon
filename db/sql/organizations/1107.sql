
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
      'Frontier Hospice',
      '221 N I- 35 Service Rd Suite D
Moore, OK 73160',
      'Moore',
      'OK',
      'At the door',
      'Yes',
      '35.3400387',
      '-97.4934657'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frontier Hospice'
        AND o.latitude = '35.3400387'
        AND o.longitude = '-97.4934657'));

COMMIT;
