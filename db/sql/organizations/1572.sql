
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
      'Emanate Health - Inter-Community Hospital',
      '150 W San Bernardino Rd
Covina, CA 91723',
      'Covina',
      'CA',
      'Attn: ER Department',
      'Yes',
      '34.0895805',
      '-117.8912493'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Emanate Health - Inter-Community Hospital'
        AND o.latitude = '34.0895805'
        AND o.longitude = '-117.8912493'));

COMMIT;
