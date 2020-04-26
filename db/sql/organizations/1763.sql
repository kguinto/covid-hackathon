
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
      'PPMC EMERGENCY DEPARTMENT ',
      '51 N 39th St
Philadelphia, PA 19104',
      'Philadelphia ',
      'PA',
      'ATTN: CHARGE NURSE',
      'No',
      '39.958494',
      '-75.1984936'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'PPMC EMERGENCY DEPARTMENT '
        AND o.latitude = '39.958494'
        AND o.longitude = '-75.1984936'));

COMMIT;
