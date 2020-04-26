
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
      'Siouxland Community Health Center',
      '1021 Nebraska St
Sioux City, IA 51105',
      'Sioux City',
      'IA',
      'mailing address ATTN: Kerry Patterson',
      'Yes',
      '42.5011671',
      '-96.4044915'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Siouxland Community Health Center'
        AND o.latitude = '42.5011671'
        AND o.longitude = '-96.4044915'));

COMMIT;
