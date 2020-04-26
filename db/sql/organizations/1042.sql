
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
      'Central EMS',
      '205 Hembree Park Dr Ste 100
Roswell, GA 30076',
      'Roswell',
      'GA',
      'ATTN: Darren Dale, Supply Manager, or call (678) 273-2124. Drop off 24/7 around rear at loading dock, mail, or contact for pick-up arrangements. Can also drop off in Buford, Savannah, or Macon, contact for addresses. ',
      'Yes',
      '34.0554925',
      '-84.3168675'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central EMS'
        AND o.latitude = '34.0554925'
        AND o.longitude = '-84.3168675'));

COMMIT;
