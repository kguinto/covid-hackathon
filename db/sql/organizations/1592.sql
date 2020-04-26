
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
      'Hospital del Maestro',
      '550 Calle Sergio Cuevas Bustamante
Esq. Ave Domenech
San Juan, PR 00918',
      'Hato Rey',
      'PR',
      'Attn: Jorge Malave',
      'Yes',
      '18.4137095',
      '-66.0682476'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95 Niosh',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hospital del Maestro'
        AND o.latitude = '18.4137095'
        AND o.longitude = '-66.0682476'));

COMMIT;
