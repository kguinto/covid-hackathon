
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
      'Medical City Arlington, Neurotrauma ICU',
      '3301 Matlock Rd
Arlington, TX 76015',
      'Arlington',
      'TX',
      'ATTN: Deliver to NEUROTRAUMA ICU unit',
      'Yes',
      '32.6931143',
      '-97.1130553'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical City Arlington, Neurotrauma ICU'
        AND o.latitude = '32.6931143'
        AND o.longitude = '-97.1130553'));

COMMIT;
