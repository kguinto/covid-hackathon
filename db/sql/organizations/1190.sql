
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
      'happy Sun Care Services LLC',
      '9957 W 87th St
Overland Park, KS 66212',
      'Ovrland Park',
      'KS',
      '9957 W. 87th street',
      'No',
      '38.9711142',
      '-94.7010787'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'happy Sun Care Services LLC'
        AND o.latitude = '38.9711142'
        AND o.longitude = '-94.7010787'));

COMMIT;
