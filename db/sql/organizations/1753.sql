
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
      'Allegiance Behavioral Health Center of Monroe',
      '4402 Sterlington Rd
Monroe, LA 71203',
      'Monroe',
      'LA',
      'Ange Alexander  mail or drop off 4402 Sterlington Road Monroe LA 71203',
      'Yes',
      '32.5782399',
      '-92.0722332'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegiance Behavioral Health Center of Monroe'
        AND o.latitude = '32.5782399'
        AND o.longitude = '-92.0722332'));

COMMIT;
