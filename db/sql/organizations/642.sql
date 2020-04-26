
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
      'Dane County Emergency Managment (EMS)',
      '115 W. Doty St, Rm 2107
Madison, WI 53703',
      'Madison',
      'WI',
      'Contact Courtney at dcems@countyofdane.com or 608-266-5374 to coordinate',
      'Yes',
      '43.0719117',
      '-89.3834434'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dane County Emergency Managment (EMS)'
        AND o.latitude = '43.0719117'
        AND o.longitude = '-89.3834434'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dane County Emergency Managment (EMS)'
        AND o.latitude = '43.0719117'
        AND o.longitude = '-89.3834434'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Dane County Emergency Managment (EMS)'
        AND o.latitude = '43.0719117'
        AND o.longitude = '-89.3834434'));

COMMIT;
