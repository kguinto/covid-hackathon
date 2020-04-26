
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
      'PM Pediatrics ',
      '12254 Rockville Pike
North Bethesda, MD 20852',
      'Rockville',
      'MD',
      'Attn: office manager ',
      'No',
      '39.0566709',
      '-77.1205666'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PM Pediatrics '
        AND o.latitude = '39.0566709'
        AND o.longitude = '-77.1205666'));

COMMIT;
