
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
      'Community Health Center Network',
      '101 Callan Avenue, Suite 300
San Leandro, CA 94577',
      'San Leandro',
      'CA',
      'Can mail items or drop off in 3rd floor lobby if no one is at front desk. Contact Megan Crowley for assistance: 510-297-0425. We can distribute to 8 member health centers serving 150,000+ patients in Alameda County.  ',
      'Yes',
      '37.7257016',
      '-122.1561995'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Center Network'
        AND o.latitude = '37.7257016'
        AND o.longitude = '-122.1561995'));

COMMIT;
