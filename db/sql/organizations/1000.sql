
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
      '180 Direct Primary Care',
      '3201 N Van Buren St #600
Enid, OK 73703',
      'Enid',
      'OK',
      '',
      'Yes',
      '36.4285497',
      '-97.8890835'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = '180 Direct Primary Care'
        AND o.latitude = '36.4285497'
        AND o.longitude = '-97.8890835'));

COMMIT;
