
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
      'Gateway-Longview',
      '6350 Main St
Williamsville, NY 14221',
      'Williamsville',
      'NY',
      'mailing address',
      'Yes',
      '42.966965',
      '-78.7162657'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gateway-Longview'
        AND o.latitude = '42.966965'
        AND o.longitude = '-78.7162657'));

COMMIT;
