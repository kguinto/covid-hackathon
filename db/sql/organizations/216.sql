
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
      'Beth Israel Deaconess Medical Center (BIDMC)',
      'Farr Building
185 Pilgrim Road
Boston, MA 02215',
      'Boston',
      'MA',
      'Drop off at front desk of Farr Building 6AM to 8PM Mon-Sun',
      'Yes',
      '42.3384259',
      '-71.1096368'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Beth Israel Deaconess Medical Center (BIDMC)'
        AND o.latitude = '42.3384259'
        AND o.longitude = '-71.1096368'));

COMMIT;
