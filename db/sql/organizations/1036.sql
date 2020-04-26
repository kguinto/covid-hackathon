
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
      'Olive View-UCLA Medical Center',
      '14445 Olive View Dr
Sylmar, CA 91342',
      'Sylmar',
      'CA',
      'Please call Department of Medicine at 747-210-3205 to arrange drop-off or pick-up',
      'No',
      '34.3259915',
      '-118.4458492'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Olive View-UCLA Medical Center'
        AND o.latitude = '34.3259915'
        AND o.longitude = '-118.4458492'));

COMMIT;
