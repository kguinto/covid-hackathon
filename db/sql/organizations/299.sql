
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
      'Affinity Urgent Care',
      '2600 FM 1764 Suite 190
La Marque, TX 77568',
      'La Marque',
      'TX',
      'Attn: Mike or Ruth',
      'Yes',
      '29.4018231',
      '-95.0354361'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Affinity Urgent Care'
        AND o.latitude = '29.4018231'
        AND o.longitude = '-95.0354361'));

COMMIT;
